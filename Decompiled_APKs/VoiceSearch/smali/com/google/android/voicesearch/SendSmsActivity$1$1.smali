.class Lcom/google/android/voicesearch/SendSmsActivity$1$1;
.super Ljava/lang/Object;
.source "SendSmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/SendSmsActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/voicesearch/SendSmsActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SendSmsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/voicesearch/SendSmsActivity$1$1;->this$1:Lcom/google/android/voicesearch/SendSmsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$1$1;->this$1:Lcom/google/android/voicesearch/SendSmsActivity$1;

    iget-object v0, v0, Lcom/google/android/voicesearch/SendSmsActivity$1;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Send SMS timeout"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    #calls: Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/SendSmsActivity;->access$000(Lcom/google/android/voicesearch/SendSmsActivity;Ljava/lang/Exception;I)V

    .line 163
    return-void
.end method
