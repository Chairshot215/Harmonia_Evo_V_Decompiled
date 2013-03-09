.class Lcom/htc/android/mail/ReadScreen$40$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$40;

.field final synthetic val$_attachList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$40;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4720
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$40$1;->this$1:Lcom/htc/android/mail/ReadScreen$40;

    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$40$1;->val$_attachList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4722
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$40$1;->this$1:Lcom/htc/android/mail/ReadScreen$40;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$40$1;->val$_attachList:Ljava/util/ArrayList;

    #calls: Lcom/htc/android/mail/ReadScreen;->showAttachment(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$7000(Lcom/htc/android/mail/ReadScreen;Ljava/util/ArrayList;)V

    .line 4723
    return-void
.end method
