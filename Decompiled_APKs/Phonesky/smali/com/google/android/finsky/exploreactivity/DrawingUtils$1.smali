.class Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;
.super Ljava/lang/Object;
.source "DrawingUtils.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getThumbnailRequest(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

.field final synthetic val$docWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;->val$docWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;->val$docWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 689
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 685
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
