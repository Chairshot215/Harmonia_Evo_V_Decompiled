.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMailBody"
.end annotation


# instance fields
.field public attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;

.field public nativeType:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 685
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->attachmentList:Ljava/util/ArrayList;

    return-void
.end method
