.class Lcom/google/android/voicesearch/SendSmsActivity$1;
.super Ljava/lang/Object;
.source "SendSmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/SendSmsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/SendSmsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/voicesearch/SendSmsActivity$1;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$1;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    new-instance v1, Lcom/google/android/voicesearch/SendSmsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/SendSmsActivity$1$1;-><init>(Lcom/google/android/voicesearch/SendSmsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
