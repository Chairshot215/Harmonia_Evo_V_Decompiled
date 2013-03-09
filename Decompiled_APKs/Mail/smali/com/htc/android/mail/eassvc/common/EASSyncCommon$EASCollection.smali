.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASCollection"
.end annotation


# instance fields
.field public DisplayName:Ljava/lang/String;

.field public HierarchyName:Ljava/lang/String;

.field public ParentID:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public SyncKey:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public defaultSync:Z

.field public enableSyncDown:Z

.field public enableSyncUp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 651
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 652
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    .line 653
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    return-void
.end method
