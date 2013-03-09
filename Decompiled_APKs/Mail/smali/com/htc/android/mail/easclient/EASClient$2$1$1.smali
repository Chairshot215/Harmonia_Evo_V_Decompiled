.class Lcom/htc/android/mail/easclient/EASClient$2$1$1;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/android/mail/easclient/EASClient$2$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1$1;->this$2:Lcom/htc/android/mail/easclient/EASClient$2$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$2$1$1;->this$2:Lcom/htc/android/mail/easclient/EASClient$2$1;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V

    .line 264
    return-void
.end method
