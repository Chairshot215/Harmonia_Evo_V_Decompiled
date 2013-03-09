.class Lcom/google/android/syncadapters/contacts/GalProvider$4;
.super Ljava/lang/Object;
.source "GalProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/contacts/GalProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/contacts/GalProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$4;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iput-object p2, p0, Lcom/google/android/syncadapters/contacts/GalProvider$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider$4;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$4;->val$uri:Landroid/net/Uri;

    #calls: Lcom/google/android/syncadapters/contacts/GalProvider;->openFile(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->access$200(Lcom/google/android/syncadapters/contacts/GalProvider;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider$4;->call()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
