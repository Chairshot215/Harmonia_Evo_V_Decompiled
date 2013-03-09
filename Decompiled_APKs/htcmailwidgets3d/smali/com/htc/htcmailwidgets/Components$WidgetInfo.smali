.class public Lcom/htc/htcmailwidgets/Components$WidgetInfo;
.super Ljava/lang/Object;
.source "Components.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/Components;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetInfo"
.end annotation


# instance fields
.field os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

.field spanX_:I

.field spanY_:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 916
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 917
    sget-object v0, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 918
    iput v1, p0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanX_:I

    .line 919
    iput v1, p0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->spanY_:I

    .line 920
    iput v1, p0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    return-void
.end method
