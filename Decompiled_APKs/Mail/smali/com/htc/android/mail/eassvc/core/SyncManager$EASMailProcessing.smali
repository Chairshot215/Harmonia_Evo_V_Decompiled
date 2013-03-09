.class Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EASMailProcessing"
.end annotation


# instance fields
.field public addSvrIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public delObjList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;"
        }
    .end annotation
.end field

.field public id_firstRecord:J

.field public newMailAttachList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field public unreadMailCount:I

.field public updObjList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->unreadMailCount:I

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->id_firstRecord:J

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->newMailAttachList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->addSvrIdList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->updObjList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$EASMailProcessing;->delObjList:Ljava/util/ArrayList;

    return-void
.end method
