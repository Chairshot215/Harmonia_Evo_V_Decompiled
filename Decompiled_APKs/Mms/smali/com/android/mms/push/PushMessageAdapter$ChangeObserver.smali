.class Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "PushMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/push/PushMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/push/PushMessageAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/push/PushMessageAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;->this$0:Lcom/android/mms/push/PushMessageAdapter;

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 243
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;->this$0:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessageAdapter;->refresh()V

    .line 253
    return-void
.end method
