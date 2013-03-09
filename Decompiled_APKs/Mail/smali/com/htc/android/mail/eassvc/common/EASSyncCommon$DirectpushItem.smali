.class Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectpushItem"
.end annotation


# instance fields
.field collectionId:I

.field enabled:Z

.field syncSourceType:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/common/EASSyncCommon;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/common/EASSyncCommon;II)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "id"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;->this$0:Lcom/htc/android/mail/eassvc/common/EASSyncCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;->enabled:Z

    .line 635
    iput p2, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;->syncSourceType:I

    .line 636
    iput p3, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;->collectionId:I

    .line 637
    return-void
.end method
