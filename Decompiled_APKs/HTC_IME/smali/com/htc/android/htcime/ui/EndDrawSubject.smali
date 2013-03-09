.class Lcom/htc/android/htcime/ui/EndDrawSubject;
.super Ljava/util/Observable;
.source "SimpleWCL.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotify(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/EndDrawSubject;->setChanged()V

    .line 1492
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/EndDrawSubject;->notifyObservers(Ljava/lang/Object;)V

    .line 1493
    return-void
.end method
