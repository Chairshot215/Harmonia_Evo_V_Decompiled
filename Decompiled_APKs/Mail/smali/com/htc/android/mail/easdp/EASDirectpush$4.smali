.class Lcom/htc/android/mail/easdp/EASDirectpush$4;
.super Ljava/lang/Object;
.source "EASDirectpush.java"

# interfaces
.implements Lcom/htc/android/pim/eas/EASEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$4;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public callback(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 822
    return-void
.end method
