.class Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParseProgress"
.end annotation


# instance fields
.field addCount:I

.field delCount:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field updateCount:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->addCount:I

    .line 148
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->updateCount:I

    .line 149
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->delCount:I

    return-void
.end method


# virtual methods
.method public getTotalChangeCount()I
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->addCount:I

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->updateCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$ParseProgress;->delCount:I

    add-int/2addr v0, v1

    return v0
.end method
