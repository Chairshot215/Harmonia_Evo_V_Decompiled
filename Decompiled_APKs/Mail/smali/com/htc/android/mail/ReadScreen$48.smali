.class Lcom/htc/android/mail/ReadScreen$48;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->enableCopyText()V
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
    .line 7124
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$48;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7126
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$48;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$11700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReadScreenScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreenScrollView;->setMode(I)V

    .line 7127
    return-void
.end method
