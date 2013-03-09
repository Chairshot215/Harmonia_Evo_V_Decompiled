.class Lcom/google/android/gsf/update/SystemUpdateActivity$2;
.super Landroid/database/ContentObserver;
.source "SystemUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    #calls: Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshDownloadProgress()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    .line 114
    return-void
.end method
