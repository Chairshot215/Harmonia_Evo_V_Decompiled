.class public Lcom/htc/util/mail/Folder$BasicMessageInfo;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasicMessageInfo"
.end annotation


# instance fields
.field public folderId:J

.field public isReaded:Z

.field public messageId:J

.field final synthetic this$0:Lcom/htc/util/mail/Folder;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/Folder;JJZ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->this$0:Lcom/htc/util/mail/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    iput-wide p4, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->folderId:J

    iput-boolean p6, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->isReaded:Z

    return-void
.end method
