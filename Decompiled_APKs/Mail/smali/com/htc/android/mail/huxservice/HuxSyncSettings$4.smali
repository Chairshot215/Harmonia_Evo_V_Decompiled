.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 754
    .local v0, syncActive:Z
    :goto_0
    if-nez v0, :cond_1

    .line 755
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #calls: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V
    invoke-static {v2, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$300(Lcom/htc/android/mail/huxservice/HuxSyncSettings;Z)V

    .line 759
    :goto_1
    return-void

    .end local v0           #syncActive:Z
    :cond_0
    move v0, v2

    .line 753
    goto :goto_0

    .line 757
    .restart local v0       #syncActive:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #calls: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$300(Lcom/htc/android/mail/huxservice/HuxSyncSettings;Z)V

    goto :goto_1
.end method
