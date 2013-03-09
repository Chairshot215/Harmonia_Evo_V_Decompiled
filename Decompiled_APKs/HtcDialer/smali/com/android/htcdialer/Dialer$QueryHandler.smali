.class final Lcom/android/htcdialer/Dialer$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 7128
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    .line 7129
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 7130
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 7140
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_2

    .line 7142
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5100(Lcom/android/htcdialer/Dialer;)V

    .line 7143
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7144
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$5302(Lcom/android/htcdialer/Dialer;Z)Z

    .line 7145
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htcdialer/Dialer;->access$5202(Lcom/android/htcdialer/Dialer;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 7146
    sget-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 7147
    sput-boolean v1, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    .line 7149
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5400(Lcom/android/htcdialer/Dialer;)Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7150
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    new-instance v1, Lcom/android/htcdialer/Dialer$QueryHandler$1;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$1800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$QueryHandler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/htcdialer/Dialer$QueryHandler$1;-><init>(Lcom/android/htcdialer/Dialer$QueryHandler;Landroid/os/Handler;)V

    #setter for: Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$5402(Lcom/android/htcdialer/Dialer;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 7162
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$QueryHandler;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$5400(Lcom/android/htcdialer/Dialer;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 7166
    :cond_2
    return-void
.end method
