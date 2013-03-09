.class Lcom/android/htcdialer/Dialer$29;
.super Ljava/lang/Thread;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 8319
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8322
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 8323
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$5400(Lcom/android/htcdialer/Dialer;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8324
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v2}, Lcom/android/htcdialer/Dialer;->access$5402(Lcom/android/htcdialer/Dialer;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 8325
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$29;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0, v2}, Lcom/android/htcdialer/Dialer;->access$5202(Lcom/android/htcdialer/Dialer;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 8326
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 8327
    return-void
.end method
