.class public Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailMailActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1136
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1138
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailMailActivity;

    .line 1143
    .local v0, activity:Lcom/android/htccontacts/ContactDetailMailActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    if-eqz p3, :cond_1

    .line 1148
    const-string v1, "d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryComplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactDetailMailActivity;->setAdapter(Landroid/database/Cursor;)V

    .line 1150
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getMailListAdapter()Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
