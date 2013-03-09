.class Lcom/htc/opensense/album/util/ImageManager$ImageList$2;
.super Landroid/database/DataSetObserver;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$ImageList;->initDataSetObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$ImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$ImageList;)V
    .locals 0
    .parameter

    .prologue
    .line 3241
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList$2;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 3246
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 3251
    return-void
.end method
