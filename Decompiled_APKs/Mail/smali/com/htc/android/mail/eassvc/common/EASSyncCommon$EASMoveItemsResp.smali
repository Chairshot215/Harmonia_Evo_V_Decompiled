.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASMoveItemsResp"
.end annotation


# instance fields
.field public DstMsgId:Ljava/lang/String;

.field public MailboxId:Ljava/lang/String;

.field public MailboxName:Ljava/lang/String;

.field public SrcMsgId:Ljava/lang/String;

.field public bInvalid_src_colid:Z

.field public messageId:J

.field public status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->status:Z

    .line 674
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->bInvalid_src_colid:Z

    return-void
.end method
