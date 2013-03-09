.class Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoDiscoverResult"
.end annotation


# instance fields
.field responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

.field resultInt:I

.field resultStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I

    return-void
.end method
