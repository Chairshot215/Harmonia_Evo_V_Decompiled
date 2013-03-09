.class Lcom/htc/android/mail/MailListTab$UpdateContentObserver;
.super Landroid/database/ContentObserver;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateContentObserver"
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/MailListTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1530
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1531
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab$UpdateContentObserver;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1532
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1539
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    const-string v2, "update unread number on tab"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$UpdateContentObserver;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailListTab;

    .line 1541
    .local v0, target:Lcom/htc/android/mail/MailListTab;
    if-nez v0, :cond_1

    .line 1544
    :goto_0
    return-void

    .line 1543
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->update()V

    goto :goto_0
.end method
