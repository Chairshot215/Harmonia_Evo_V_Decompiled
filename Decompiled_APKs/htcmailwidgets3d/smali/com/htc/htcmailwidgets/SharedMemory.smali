.class public Lcom/htc/htcmailwidgets/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/SharedMemory$WidgetMap;
    }
.end annotation


# instance fields
.field public mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/SharedMemory;->mObjects:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public getArrayListSize()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
