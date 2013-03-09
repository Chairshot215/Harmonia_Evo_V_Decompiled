.class Lcom/htc/album/helper/MenuManager$UpdateLocationCallback;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateLocationCallback"
.end annotation


# instance fields
.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4245
    .local p1, view:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4246
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$UpdateLocationCallback;->mView:Ljava/lang/ref/WeakReference;

    .line 4247
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 4260
    return-void
.end method
