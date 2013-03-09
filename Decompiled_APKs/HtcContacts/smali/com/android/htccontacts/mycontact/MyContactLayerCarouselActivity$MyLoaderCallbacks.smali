.class Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "MyContactLayerCarouselActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;-><init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;

    iget-object v1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;-><init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-virtual {v2, p2}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->createHtcContactInfo(Landroid/net/Uri;)V

    .line 396
    new-instance v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;

    iget-object v2, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;-><init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V

    .line 397
    .local v0, loadContactInfo:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 398
    .local v1, loadContactInfoThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 399
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/net/Uri;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/Uri;>;"
    return-void
.end method
