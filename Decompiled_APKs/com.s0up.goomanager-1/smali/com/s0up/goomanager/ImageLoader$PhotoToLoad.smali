.class Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/s0up/goomanager/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "u"
    .parameter "i"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->this$0:Lcom/s0up/goomanager/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 152
    return-void
.end method
