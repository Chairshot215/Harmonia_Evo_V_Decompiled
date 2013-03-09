.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintMemo;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintMemo"
.end annotation


# instance fields
.field public FileType:Ljava/lang/String;

.field public FootprintId:Ljava/util/UUID;

.field public Id:Ljava/util/UUID;

.field public MemoTime:I

.field public Name:Ljava/lang/String;

.field public Timestamp:Ljava/util/Date;

.field public Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
