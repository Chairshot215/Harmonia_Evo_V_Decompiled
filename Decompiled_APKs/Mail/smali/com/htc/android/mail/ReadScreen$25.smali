.class Lcom/htc/android/mail/ReadScreen$25;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3099
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$25;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 3101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$25$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$25$1;-><init>(Lcom/htc/android/mail/ReadScreen$25;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3106
    const/4 v0, 0x0

    return v0
.end method
