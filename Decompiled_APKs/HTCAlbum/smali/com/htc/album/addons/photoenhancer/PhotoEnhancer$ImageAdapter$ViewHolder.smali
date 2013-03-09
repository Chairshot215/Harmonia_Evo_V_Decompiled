.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iconFront:Landroid/view/View;

.field iconImage:Landroid/widget/ImageView;

.field id:I

.field text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->this$1:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
