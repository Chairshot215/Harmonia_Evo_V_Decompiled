.class Lcom/htc/android/mail/ReadScreen$25$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$25;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$25;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$25;)V
    .locals 0
    .parameter

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$25$1;->this$1:Lcom/htc/android/mail/ReadScreen$25;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$25$1;->this$1:Lcom/htc/android/mail/ReadScreen$25;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$25;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v1

    #calls: Lcom/htc/android/mail/ReadScreen;->loadMail(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$4000(Lcom/htc/android/mail/ReadScreen;I)V

    .line 3104
    return-void
.end method
