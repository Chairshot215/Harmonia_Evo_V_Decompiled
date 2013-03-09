.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 851
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 852
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 853
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 856
    if-eqz p3, :cond_1

    .line 857
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .line 858
    .local v0, activity:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 859
    :cond_0
    if-eqz v0, :cond_2

    .line 860
    invoke-interface {p3}, Landroid/database/Cursor;->deactivate()V

    .line 861
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 872
    .end local v0           #activity:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
    :cond_1
    :goto_0
    return-void

    .line 864
    .restart local v0       #activity:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->assignCursor(Landroid/database/Cursor;)V

    .line 869
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildEntries()V

    goto :goto_0
.end method
