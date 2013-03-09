.class Lcom/htc/android/mail/util/EmailAddressAdapter$1;
.super Ljava/lang/Object;
.source "EmailAddressAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/util/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

.field final synthetic val$old:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    iput-object p2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->val$old:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->val$old:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->val$old:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$1;->val$old:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EmailAddressAdapter"

    const-string v3, "catch excepiton"

    invoke-static {v1, v3, v0}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
