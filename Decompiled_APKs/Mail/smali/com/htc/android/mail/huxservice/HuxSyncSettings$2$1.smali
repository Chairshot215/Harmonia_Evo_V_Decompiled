.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$2$1;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onSyncStateUpdated()V

    .line 739
    return-void
.end method
