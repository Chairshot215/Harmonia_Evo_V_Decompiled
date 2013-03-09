.class public Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/GroupDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;
    }
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/GroupDialogPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/app/GroupDialogPicker;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 210
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public cancelQueryGroupItem()V
    .locals 1

    .prologue
    .line 221
    const v0, 0xf001

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->cancelOperation(I)V

    .line 222
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 213
    new-instance v0, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;-><init>(Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public startQueryGroupItem()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 217
    const v1, 0xf001

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method
