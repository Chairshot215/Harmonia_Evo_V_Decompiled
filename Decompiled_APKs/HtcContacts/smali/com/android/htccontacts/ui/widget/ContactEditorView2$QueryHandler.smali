.class Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactEditorView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 1338
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1340
    return-void
.end method
