.class Lcom/htc/server/ulog/PolicyStore$1;
.super Landroid/os/RemoteCallbackList;
.source "PolicyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/PolicyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/os/IRemoteCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/ulog/PolicyStore;


# direct methods
.method constructor <init>(Lcom/htc/server/ulog/PolicyStore;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/ulog/PolicyStore$1;->this$0:Lcom/htc/server/ulog/PolicyStore;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-virtual {p0, p1}, Lcom/htc/server/ulog/PolicyStore$1;->onCallbackDied(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public onCallbackDied(Landroid/os/IRemoteCallback;)V
    .locals 0

    return-void
.end method
