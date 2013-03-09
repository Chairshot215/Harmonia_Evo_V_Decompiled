.class public Lcom/htc/htcmailwidgets/SharedMemory$WidgetMap;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetMap"
.end annotation


# instance fields
.field accountid:I

.field accountname:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/htcmailwidgets/SharedMemory;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/SharedMemory;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, Lcom/htc/htcmailwidgets/SharedMemory$WidgetMap;->this$0:Lcom/htc/htcmailwidgets/SharedMemory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
