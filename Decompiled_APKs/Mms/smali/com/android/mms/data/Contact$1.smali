.class final Lcom/android/mms/data/Contact$1;
.super Landroid/database/ContentObserver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfUpdate"

    .prologue
    .line 36
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "contact changed, invalidate cache"

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 40
    return-void
.end method
