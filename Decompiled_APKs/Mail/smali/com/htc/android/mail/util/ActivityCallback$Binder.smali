.class public Lcom/htc/android/mail/util/ActivityCallback$Binder;
.super Lcom/htc/android/mail/util/IActivityCallback$Stub;
.source "ActivityCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/util/ActivityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Binder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/android/mail/util/IActivityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadSeq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
