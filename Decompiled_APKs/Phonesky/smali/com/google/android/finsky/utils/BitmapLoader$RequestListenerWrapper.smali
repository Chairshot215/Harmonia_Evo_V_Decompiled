.class Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestListenerWrapper"
.end annotation


# instance fields
.field private handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private responseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/android/volley/Request;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 1
    .parameter
    .parameter
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    .line 450
    iput-object p2, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;

    .line 451
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addHandler(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public removeHandlerAndCancelIfNecessary(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Z
    .locals 1
    .parameter "container"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 472
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
