.class Lcom/android/htcdialer/Dialer$QueryHandler$1;
.super Landroid/database/ContentObserver;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/Dialer$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer$QueryHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 7150
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$QueryHandler$1;->this$1:Lcom/android/htcdialer/Dialer$QueryHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 7153
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler$1;->this$1:Lcom/android/htcdialer/Dialer$QueryHandler;

    iget-object v0, v0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7154
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler$1;->this$1:Lcom/android/htcdialer/Dialer$QueryHandler;

    iget-object v0, v0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->requeryIpDial()V
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5500(Lcom/android/htcdialer/Dialer;)V

    .line 7158
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7159
    return-void

    .line 7156
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler$1;->this$1:Lcom/android/htcdialer/Dialer$QueryHandler;

    iget-object v0, v0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x1

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$5302(Lcom/android/htcdialer/Dialer;Z)Z

    goto :goto_0
.end method
