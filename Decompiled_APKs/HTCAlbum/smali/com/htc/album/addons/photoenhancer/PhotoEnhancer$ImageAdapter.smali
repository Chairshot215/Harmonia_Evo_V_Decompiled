.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private final myContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 936
    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->myContext:Landroid/content/Context;

    .line 937
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->myContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 938
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 957
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 969
    if-eqz p2, :cond_0

    .line 971
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;

    .line 985
    .local v0, holder:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    :goto_0
    iget-object v1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 987
    iput p1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->id:I

    .line 988
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 989
    return-object p2

    .line 975
    .end local v0           #holder:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 976
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;)V

    .line 977
    .restart local v0       #holder:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    const v1, 0x7f0a0025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 978
    const v1, 0x7f0a0026

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->iconFront:Landroid/view/View;

    .line 979
    const v1, 0x7f0a0027

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 982
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;->myContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->iconFront:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/htc/album/Customizable/CustSkinnable;->setBackground_PhotoEnhancerPhotoPresetFrame(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
