.class final Lcom/coremobility/app/vnotes/fv;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/fv;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fv;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Landroid/database/Cursor;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
