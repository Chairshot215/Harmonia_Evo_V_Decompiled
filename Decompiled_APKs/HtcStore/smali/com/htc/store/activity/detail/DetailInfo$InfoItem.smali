.class Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
.super Ljava/lang/Object;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoItem"
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private isEnd:Z

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .prologue
    .line 1471
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->info:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method public setIsEnd(Z)V
    .locals 0
    .parameter "isEnd"

    .prologue
    .line 1468
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd:Z

    .line 1469
    return-void
.end method
