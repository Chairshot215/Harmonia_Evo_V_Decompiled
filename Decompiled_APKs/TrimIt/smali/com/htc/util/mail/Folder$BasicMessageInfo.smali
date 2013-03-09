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
    .parameter
    .parameter "messageId"
    .parameter "folderId"
    .parameter "isReaded"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->this$0:Lcom/htc/util/mail/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p2, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    .line 159
    iput-wide p4, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->folderId:J

    .line 160
    iput-boolean p6, p0, Lcom/htc/util/mail/Folder$BasicMessageInfo;->isReaded:Z

    .line 161
    return-void
.end method
