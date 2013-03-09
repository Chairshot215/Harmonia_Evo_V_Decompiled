.class Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
.super Ljava/lang/Object;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewItem"
.end annotation


# instance fields
.field finished:Z

.field height:I

.field final id:I

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 2205
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->finished:Z

    .line 2206
    iput p2, p0, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    .line 2207
    return-void
.end method
